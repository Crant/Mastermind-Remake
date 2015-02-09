#include "Audio.h"

#include "s3e.h"
#include "IwHashString.h"

AudioSound::AudioSound()
{
	this->zSoundData = 0; 
	this->zSoundSpec = 0;
}

AudioSound::~AudioSound()
{
	if(this->zSoundSpec != 0)
		delete this->zSoundSpec;
	if(this->zSoundData != 0)
		delete this->zSoundData;
}

bool AudioSound::Load( const char* pFilename )
{
	this->zNameHash = IwHashString(pFilename);

	this->zSoundData = CIwSoundWAV::Create(pFilename, 0, 0);

	if(this->zSoundData == 0)
		return false;

	this->zSoundSpec = new CIwSoundSpec();
	this->zSoundSpec->SetData(this->zSoundData);

	return true;
}

//
// Audio class
//
Audio::Audio()
{
	//Initialize IwSound
	IwSoundInit();
}

Audio::~Audio()
{
	for (std::list<AudioSound*>::iterator it = this->zSounds.begin(); it != this->zSounds.end(); it++)
		delete *it;

	IwSoundTerminate();
}

AudioSound* Audio::FindSound( unsigned int pName_hash )
{
	for(std::list<AudioSound*>::iterator it = this->zSounds.begin(); it != this->zSounds.end(); it++)
	{
		if( (*it)->GetNameHash() == pName_hash)
		{
			return *it;
		}
	}
	return 0;
}

void Audio::Update()
{
	IwGetSoundManager()->Update();
}

void Audio::PlayMusic( const char* pFilename, bool pRepeat /*= true*/ )
{
	// We only support play back of MP3 music
	if(s3eAudioIsCodecSupported(S3E_AUDIO_CODEC_MP3))
	{
		//If repeat is true set 0 for infinite play time
		s3eAudioPlay(pFilename, pRepeat ? 0 : 1);
	}
}

void Audio::StopMusic()
{
	s3eAudioStop();
}

AudioSound* Audio::PreLoadSound( const char* pFilename )
{
	AudioSound* sound = FindSound(IwHashString(pFilename));

	if(sound == 0)
	{
		sound = new AudioSound();
		if(!sound->Load(pFilename))
		{
			delete sound;
			return 0;
		}
		this->zSounds.push_back(sound);
	}
	return sound;
}

void Audio::PlaySound( const char* pFilename )
{
	AudioSound* sound = PreLoadSound(pFilename);
	if(sound != 0)
		sound->GetSoundSpec()->Play();
}

namespace
{
	static Audio* audio = 0;
}

bool AudioInit()
{
	if(audio)
		delete audio;

	audio = new Audio();

	return audio != 0;
}

Audio* GetAudio()
{
	if(!audio)
		return 0;

	return audio;
}

bool FreeAudio()
{
	if ( !audio )
		return false;

	delete audio;
	audio = 0;

	return true;
}