using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Basic_Patrol_Chase_Atrack : MonoBehaviour
{

    public NavMeshAgent agent;

    public Transform player;

    public LayerMask whatIsGround, whatIsPlayer;

    public float health;

    //Patrolling
    public Vector3 walkpPoint;
    bool walkPointSet;
    public float walkPointRange;

    //Attacking
    public float timeBetweenAttacks;
    bool alreadyAttacked;

    //States
    public float sightRange, attackRange;
    public bool playerInSightRange, playerInAttackRange;


    private void Awake()
    {
        player = GameObject.Find("Player").transform;
        agent = GetComponent<NavMeshAgent>();
    }

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        playerInSightRange = Physics.CheckSphere(transform.position, sightRange, whatIsPlayer);
        playerInAttackRange = Physics.CheckSphere(transform.position, attackRange, whatIsPlayer);

        if (!playerInSightRange && !playerInAttackRange) Patrolling();
        if (playerInSightRange && !playerInAttackRange) ChasePlayer();
        if (playerInSightRange && playerInAttackRange) AttackPlayer)();

    }

    private void Patrolling()
    {
        if (!walkPointSet) SearchWalkPoint();

        if (walkpPoint)
            agent.SetDestination(walkPoint);

        Vector3 distanceToWalkPoint -transform.position - walkpPoint;

        if (distanceToWalkPoint.magnitude < 1)
            walkPointSet = false;
    }

    private void SearchWalkPoint()
    {
        //Calculate random point in range
        float randomZ = Random.Range(-walkPointRange, walkPointRange);
        float randomX = Random.Range(-walkPointRange, walkPointRange);

        walkPoint = new Vector3(transform.positionX + randomX, transform.positionY, transform.positionZ + randomZ);

        if (Physics.RayCast(walkpPoint, -transform.up, 2f, whatIsGround))
            walkpPoint = true;

    }

    private void ChasePlayer()
    {
        agent.SetDestination(player.position);
    }

    private void AttackPlayer()
    {
        agent.SetDestination(transform.position);

        transform.LookAt(player);

        if (!alreadyAttacked)
        {
            //More stuff for attacking

            alreadyAttacked = true;
            invoke(nameof(ReestAttack), timeBetweenAttacks);
        }

    }
    
    private ResetAttack()
    {
        alreadyAttacked = false;
    }

    public void TakeDamage(int damage)
    {
        health -= damage;

        if (health <= 0) invoke(nameof(DestoyEnemy), 2f);
    }

    private void DestroyEnemy()
    {
        Destroy(gameObject);
    }
   
}
