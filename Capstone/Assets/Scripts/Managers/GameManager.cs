using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public enum GameState
{
    Menu,
    Choices,
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

    [ColorUsage(true, true)] public List<Color> colorList;

    private GameState _gameState;
    public GameState GameState
    {
        get { return _gameState; }
        set { SetGameState(value); }
    }
    
    //events
    public static event Action Menu;
    public static event Action StartStaff;

    public override void Awake()
    {
        base.Awake();
        // QualitySettings.vSyncCount = 0;  // VSync must be disabled
        // Application.targetFrameRate = 120;
    }

    // Start is called before the first frame update
    void Start()
    {
        GameState = GameState.Staff;
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

        _gameState = newGameState;
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
