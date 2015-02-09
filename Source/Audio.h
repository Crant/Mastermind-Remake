#pragma once

#include "IwSound.h"
#include <list>

/**
 * @struct    AudioSound
 *
 * @brief Audio sound effect class
 *
 */
class AudioSound
{
private:
	// Hashed string name of sound effect
	unsigned int zNameHash;
	// Sound effect data
	CIwSoundData* zSoundData;
	// Sound effect specification
	CIwSoundSpec* zSoundSpec;

public:
	AudioSound();
	~AudioSound();
	/**
     * @fn    bool AudioSound::Load(const char* filename)
     *
     * @brief Loads the given sound effect file.
     *
     * Loads a sound effect file stored in ADPCM IMA mono format and creates a sound spec that can be used to play the sound effect
     *
     * @param filename    The filename to load.
     *
     * @return    true if it succeeds, false if it fails.
     */
	bool Load(const char* pFilename);

	//
	unsigned int GetNameHash() {return this->zNameHash;}
	//
	CIwSoundSpec* GetSoundSpec() {return this->zSoundSpec;}
	//
	CIwSoundData* GetSoundData() {return this->zSoundData;}
};

/**
 * @class Audio
 *
 * @brief Audio manager
 *
 * The audio manager is responsible for management of sound effects, update of the audio system and play back of sound effects and background music.
 *
 * Example usage:
 * @code
 *    // Set up audio systems
 *    g_Audio = new Audio();
 *
 *    // Update
 *    while (!s3eDeviceCheckQuitRequest())
 *    {
 *        // Update audio system
 *        g_Audio->Update();
 *    }
 *
 *    // Cleanup
 *    delete g_Audio;
 *
 * @endcode
 *
 */
class Audio
{
private:
	
public:
	Audio();
	~Audio();

	// List of sound effects
	std::list<AudioSound*> zSounds;

	/**
     * @fn    AudioSound* Audio::findSound(unsigned int pName_hash)
     *
     * @brief Searches for the named sound effect.
     *
     * @param pName_hash   String hash of sound effect name.
     *
     * @return    null if it fails, else the found sound effect.
     */
	AudioSound* FindSound(unsigned int pName_hash);
	
	/**
     * @fn    void Audio::Update()
     *
     * @brief Updates the audio system
     *
     * This should be called each main loop update to ensure that sound effects are played back consistently.
     */
	void Update();

	/**
     * @fn    void Audio::PlayMusic(const char* pFilename, bool pRepeat)
     *
     * @brief Play the specified music file.
     *
     * @param pFilename    Name of the audio file to play (MP3 format only)
     * @param pRepeat      true to repeat play back.
     *
     */
	static void PlayMusic(const char* pFilename, bool pRepeat = true);

	/**
     * @fn    void Audio::StopMusic()
     *
     * @brief Stops currently playing music.
     *
     */
	static void StopMusic();

	 /**
     * @fn    AudioSound* Audio::PreloadSound(const char* pFilename)
     *
     * @brief Preload a sound effect.
     *
     * The sound effect will be added to the audio managers list of loaded sound effects. If the sound effect already exists within the audio manager then no
     * sound effect will be loaded. Its useful to preload larger sound effects during app set-up to prevent delays when playing audio back during game play.
     *
     * @param pFilename    Name of sound effect file.
     *
     * @return    null if it fails, else the sound effect
     */
	AudioSound* PreLoadSound(const char* pFilename);

	/**
     * @fn    void Audio::PlaySound(const char* pFilename)
     *
     * @brief Play the specified sound effect.
     *
     * Once a sound effect has been played it will be cached in the audio manager so future play back will not be hindered by having to re-load the sound effect from storage.
     *
     * @param pFilename    Filename of the sound effect.
     */
	void PlaySound(const char* pFilename);
};
/**
 * @brief A pointer to the global audio object.
 */
bool FreeAudio();
Audio* GetAudio();
bool AudioInit();