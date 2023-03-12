using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public enum GameState
{
    Menu,
    Staff
}

public class GameManager : Singleton<GameManager>
{
    private Player _player;
    public Player Player => _player;
    private Staff _staff;
    public Staff Staff => _staff;
    
    private GameState _gameState;
    public GameState GameState
    {
        get { return _gameState; }
        set { SetGameState(value); }
    }
    
    //events
    public static event Action Menu;
    public static event Action StartStaff;
    
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void SetGameState(GameState newGameState)
    {
        switch (newGameState)
        {
            case (GameState.Menu):
            {
                Menu?.Invoke();
                break;
            }
            case (GameState.Staff):
            {
                StartStaff?.Invoke();
                break;
            }
        }
    }

    public void SetPlayer(Player player)
    {
        _player = player;
    }

    public void SetStaff(Staff staff)
    {
        _staff = staff;
    }
}
