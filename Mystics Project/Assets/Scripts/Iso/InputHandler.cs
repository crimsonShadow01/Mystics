﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputHandler : MonoBehaviour
{
    public Vector2 inputVector { get; private set; }
    public Vector3 mousePosition {get; private set;}

    void Update()
    {
        var h = Input.GetAxis("Horizontal");
        var v = Input.GetAxis("Vertical");
        inputVector = new Vector2(h, v);

        mousePosition = Input.mousePosition; 
    }
}
