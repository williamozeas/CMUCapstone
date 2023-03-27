using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class AudioManager : Singleton<AudioManager>
{
    [SerializeField] private AudioMixer _mixer;
    public AudioMixer Mixer => _mixer;

    [Range(0, 1)] public float synthMaxVolume = 0.1f;
    [Range(0, 1)] public float synthMaxFilter = 0.1f;
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    public void SetSynthVolume(float volume)
    {
        Mixer.SetFloat("Synth_noteon", volume * synthMaxVolume);
    }

    public void SetSynthNote(float note)
    {
        Mixer.SetFloat("Synth_note", note / 127f);
    }

    public void SetSynthFilterFreq(float filterPercent)
    {
        Mixer.SetFloat("Synth_filter", filterPercent * synthMaxFilter);
    }
}
