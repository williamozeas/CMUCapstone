using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Deprecated
{
    public class Staff : MonoBehaviour
    {

        [HideInInspector] public List<StaffLine> lines = new List<StaffLine>();

        private void Awake()
        {
            // GameManager.Instance.SetStaff(this);
            lines = GetComponentsInChildren<StaffLine>().ToList();

            //TODO: use integer compare fn
            // lines.Sort((a, b) => Compare);
        }



        private void OnEnable()
        {
            Player.MoveUp += OnMoveUp;
            Player.MoveDown += OnMoveDown;
        }

        private void OnDisable()
        {
            Player.MoveUp -= OnMoveUp;
            Player.MoveDown -= OnMoveDown;
        }

        private void OnMoveDown(int newIndex)
        {
            //disable collision w/player
            int prevIndex = newIndex + 1;
            Debug.Log("Ignoring " + prevIndex);
            StaffLine prevLine = lines[prevIndex];
            // Physics.IgnoreCollision(prevLine.Coll, GameManager.Instance.Cube.Coll, true);
        }

        private void OnMoveUp(int newIndex)
        {
            int prevIndex = newIndex - 1;
            StaffLine newLine = lines[newIndex];
            // Physics.IgnoreCollision(newLine.Coll, GameManager.Instance.Player.Coll, true);
        }
    }
}
