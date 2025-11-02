package com.leozito.hyperboostff;

import android.app.Activity;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity {
    MediaPlayer mp;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mp = MediaPlayer.create(this, R.raw.boost_sound);
        Button btn = findViewById(R.id.btn_boost);
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Boost ativado!", Toast.LENGTH_SHORT).show();
                if(mp != null) mp.start();
            }
        });
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if(mp != null) { mp.release(); mp = null; }
    }
}
