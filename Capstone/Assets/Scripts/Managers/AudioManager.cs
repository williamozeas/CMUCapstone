using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class AudioManager : Singleton<AudioManager>
{
    [SerializeField] private AudioMixer _mixer;
    public AudioMixer Mixer => _mixer;

    [Range(0, 1)] public float synthMaxVolume = 1f;
    [Range(0, 1)] public float synthMaxFilter = 1f;
    public float synthAttack = 0.25f;
    public float synthRelease = 0.4f;

    private float currentSynthTotalVolume;
    private float noteOn = 0;
    private Coroutine lerpVolumeCoroutine;
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    void Update()
    {
        if (GameManager.Instance.GameState == GameState.Staff)
        {
            Mixer.SetFloat("Synth_noteon", currentSynthTotalVolume * noteOn);
        }
    }

    public void SetSynthCursor(bool clicked)
    {
        noteOn = Convert.ToInt32(clicked);
    }

    public void SetSynthVolume(float volume)
    {
        currentSynthTotalVolume = volume * synthMaxVolume;
    }

    public void SetSynthNote(float note)
    {
        if (noteOn != 0)
        {
            Mixer.SetFloat("Synth_note", note / 127f);
        }
    }

    public void SetSynthFilterFreq(float filterPercent)
    {
        Mixer.SetFloat("Synth_filter", filterPercent * synthMaxFilter);
    }

    public void SetSynthAttack(float attack)
    {
        Mixer.SetFloat("Synth_attack", attack);
    }
}
