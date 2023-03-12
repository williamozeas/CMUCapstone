using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputManager : MonoBehaviour
{
    [SerializeField] private float deadZone = 0.8f;
    
    private Player _player;
    private int _vertAxisDirection;

    // Start is called before the first frame update
    void Start()
    {
        _player = GameManager.Instance.Player;
    }

    // Update is called once per frame
    void Update()
    {
        //TODO: new input system
        int newAxisDirection;
        float vertAxis = Input.GetAxisRaw("Vertical");
        if (vertAxis > deadZone)
        {
            newAxisDirection = 1;
        } 
        else if (vertAxis < -deadZone)
        {
            newAxisDirection = -1;
        }
        else
        {
            newAxisDirection = 0;
        }

        if (newAxisDirection != _vertAxisDirection)
        {
            if (newAxisDirection == 1)
            {
                Up();
            }
            else if(newAxisDirection == -1)
            {
                Down();
            }
        }

        _vertAxisDirection = newAxisDirection;
    }

    void Down()
    {
        _player.MovePlayerDown();
    }

    void Up()
    {
        _player.MovePlayerUp();
    }
}
