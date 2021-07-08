using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;
public class NameThatSpeciesController : MonoBehaviour
{
    public Button correct;

    public Button wrong;

    public GameObject imageCorrect;

    public GameObject imageWrong;

    public Text scoreText;

    public GameObject nextCanvas;

    public bool isLastLevel = false;
    // Start is called before the first frame update
    void Start()
    {
        imageCorrect.SetActive(false);

        imageWrong.SetActive(false);

        correct.onClick.AddListener(answerCorrect);

        wrong.onClick.AddListener(answerWrong);
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void answerCorrect()
    {
        int number = Int32.Parse(scoreText.text.ToString()) + 5;
        imageCorrect.SetActive(true);
        scoreText.text = number.ToString();
        StartCoroutine(ExecuteAfterTime(0.1f));
    }
    public void answerWrong()
    {
        imageWrong.SetActive(true);
        StartCoroutine(ExecuteAfterTime(0.1f));
    }
    IEnumerator ExecuteAfterTime(float time)
    {
        if (isLastLevel)
        {
            scoreText.text = "0";
        }
        int i = 0;
        Debug.Log(" " + i++);
        yield return new WaitForSeconds(time);
        imageCorrect.SetActive(false);
        imageWrong.SetActive(false);
        this.gameObject.SetActive(false);
        nextCanvas.SetActive(true);
    }
}
