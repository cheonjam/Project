package com.example.jaemin.hanbatmap;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class CallActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_call);
    }

    public void onClick(View view) {
        Intent intent = null;
        switch(view.getId()) {
            case R.id.button: //교무처
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse("tel:(+82)0428211021"));
                startActivity(intent);
                break;

            case R.id.button1: //학생취업처
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse("tel:(+82)0428211029"));
                startActivity(intent);
                break;
            case R.id.button2: //기획처
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse("tel:(+82)0428211033"));
                startActivity(intent);
                break;
            case R.id.button3: //사무국
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse("tel:(+82)0428211011"));
                startActivity(intent);
                break;

            case R.id.button4: //입학관리본부
                intent = new Intent(Intent.ACTION_VIEW, Uri.parse("tel:(+82)0428211804"));
                startActivity(intent);
                break;

            case R.id.button5 : //산학협력단
                intent = new Intent(Intent.ACTION_VIEW,Uri.parse("tel:(+82)0428211605"));
                startActivity(intent);
                break;

            case R.id.button6 : //평생교육원
                intent = new Intent(Intent.ACTION_VIEW,Uri.parse("tel:(+82)0428211881"));
                startActivity(intent);
                break;

            case R.id.button7 : //전산정보원
                intent = new Intent(Intent.ACTION_VIEW,Uri.parse("tel:(+82)0428211390"));
                startActivity(intent);
                break;
        }
    }
}