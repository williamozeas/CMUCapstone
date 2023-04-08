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
        // StartCoroutine(ActivateAccompaniment());
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

    public void SetAccChord(int chordNum, int index)
    {
        Mixer.SetFloat("Acc_chord_" + (index + 1), (float)(chordNum + 1) / 4);
    }
    
    public void SetAccPlaying(int playing)
    {
        Mixer.SetFloat("Acc_playing", playing);
    }

    private IEnumerator ActivateAccompaniment()
    {
        float vol;
        Mixer.GetFloat("Acc_volume", out vol);
        Mixer.SetFloat("Acc_volume", -100000f);
        for (int i = 0; i <= 1; i++)
        {
            SetAccChord(1, i);
        }
        yield return new WaitForSeconds(3f);
        Mixer.SetFloat("Acc_volume", vol);
        for (int i = 0; i <= 1; i++)
        {
            SetAccChord(-1, i);
        }
    }
}
