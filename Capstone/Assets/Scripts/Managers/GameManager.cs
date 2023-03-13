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

[System.Serializable]
public struct GameParams
{
    public int staffLines;
}

public class GameManager : Singleton<GameManager>
{
    public GameParams gameParams;
    
    private Cube _cube;
    public Cube Cube => _cube;
    private Staff _staff;
    public Staff Staff => _staff;
    private Cursor _cursor;
    public Cursor Cursor => _cursor;
    
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

    public void SetCube(Cube cube)
    {
        _cube = cube;
    }

    public void SetStaff(Staff staff)
    {
        _staff = staff;
    }
    
    public void SetCursor(Cursor cursor)
    {
        _cursor = cursor;
    }
}
