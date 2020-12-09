using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IsoCharacterMovement : MonoBehaviour
{
    public float movementSpeed;
    public Camera cam; 

    private InputHandler _input;

   
    private void Awake()
    {
        _input = GetComponent<InputHandler>();

    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        var targetVector = new Vector3(_input.inputVector.x, 0, _input.inputVector.y);

        //Movement
        MoveTowardTarget(targetVector);


        //Rotation
    }
    private void MoveTowardTarget(Vector3 targetVector)
    {
        var speed = movementSpeed * Time.deltaTime;

        targetVector = Quaternion.Euler(0, cam.gameObject.transform.eulerAngles.y, 0) * targetVector;
        var targetPosition = transform.position + targetVector * movementSpeed;
        transform.position = targetPosition; 


    }
}
