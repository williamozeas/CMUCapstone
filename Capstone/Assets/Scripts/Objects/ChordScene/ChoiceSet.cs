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

    public void OnSelect(int index)
    {
        _vCam.enabled = false;
        foreach (var choice in _choicesList)
        {
            choice.gameObject.layer = LayerMask.NameToLayer("Ignore Raycast");
        }
        //TODO: set choice
    }
}
