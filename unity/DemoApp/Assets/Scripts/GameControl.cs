using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class GameControl : MonoBehaviour
{
    [SerializeField]
    private Transform[] pictures;

    [SerializeField]
    private GameObject winText;

    public static bool youWin;

    // public Text textScore;
    public GameObject nextCanvas;

    public GameObject currentCanvas;

    public bool isLast = false;
    void Start()
    {
        winText.SetActive(false);
        youWin = false;
    }

    void Update()
    {
        if (pictures[0].rotation.z == 0 &&
           pictures[1].rotation.z == 0 &&
           pictures[2].rotation.z == 0 &&
           pictures[3].rotation.z == 0 &&
           pictures[4].rotation.z == 0 &&
           pictures[5].rotation.z == 0 &&
           pictures[6].rotation.z == 0 &&
           pictures[7].rotation.z == 0 &&
           pictures[8].rotation.z == 0)
        {
            youWin = true;
            winText.SetActive(true);

            if (youWin)
            {
               

                StartCoroutine(ExecuteAfterTime(1f));
               

            }

        }
    }
    IEnumerator ExecuteAfterTime(float time)
    {
        
        int i = 0;
        Debug.Log(" " + i++);
        youWin = false;
        yield return new WaitForSeconds(time);
        if (isLast)
        {
            SceneManager.LoadScene("SpekPuz");
            winText.SetActive(false);
            currentCanvas.SetActive(false);
            nextCanvas.SetActive(true);
            
        }
        else
        {
            winText.SetActive(false);
            currentCanvas.SetActive(false);
            nextCanvas.SetActive(true);
        }

    }
}
