using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cinemachine;
using UnityEngine;

public class ChoiceSet : MonoBehaviour
{
    public int index;
    private CinemachineVirtualCamera _vCam;
    private List<Choice> _choicesList;
    public List<Choice> Choices => _choicesList;

    private int _choice = -1;

    // Start is called before the first frame update
    void Awake()
    {
        _choicesList = GetComponentsInChildren<Choice>().ToList();
        _vCam = GetComponentInChildren<CinemachineVirtualCamera>();
        foreach (var choice in _choicesList)
        {
            choice.set = this;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnHover(int chordChoice)
    {
        AudioManager.Instance.SetAccChord(chordChoice, index);
    }

    public void OnStopHover()
    {
        if (_choice == -1)
        {
            AudioManager.Instance.SetAccChord(-1, index);
        }
    }

    public void OnSelect(int chordChoice)
    {
        _choice = chordChoice;
        _vCam.enabled = false;
        foreach (var choice in _choicesList)
        {
            choice.gameObject.layer = LayerMask.NameToLayer("Ignore Raycast");
        }
        
        AudioManager.Instance.SetAccChord(chordChoice, index);

        if (index == 3)
        {
            StartCoroutine(StartPlaying());
        }
    }

    private IEnumerator StartPlaying()
    {
        yield return new WaitForSeconds(1f);
        AudioManager.Instance.counting = true;
        yield return new WaitForSeconds(0.21f);
        
        AudioManager.Instance.SetAccPlaying(1);
        GameManager.Instance.NextButton.Activate();
    }
}
