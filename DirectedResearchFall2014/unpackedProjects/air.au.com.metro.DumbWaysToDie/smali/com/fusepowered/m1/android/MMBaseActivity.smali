.class Lcom/fusepowered/m1/android/MMBaseActivity;
.super Ljava/lang/Object;
.source "MMBaseActivity.java"


# instance fields
.field activity:Lcom/fusepowered/m1/android/MMActivity;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->finishSuper()V

    .line 162
    return-void
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fusepowered/m1/android/MMActivity;->onActivityResultSuper(IILandroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->onConfigurationChangedSuper(Landroid/content/res/Configuration;)V

    .line 182
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->onCreateSuper(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->onDestroySuper()V

    .line 30
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/android/MMActivity;->onKeyDownSuper(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->onPauseSuper()V

    .line 55
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->onRestartSuper()V

    .line 45
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->onRestoreInstanceStateSuper(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->onResumeSuper()V

    .line 50
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->onRetainNonConfigurationInstanceSuper()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->onSaveInstanceStateSuper(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->onStartSuper()V

    .line 35
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMActivity;->onStopSuper()V

    .line 40
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->onWindowFocusChangedSuper(Z)V

    .line 177
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/android/MMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->setContentView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .parameter "requestedOrientation"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->setRequestedOrientation(I)V

    .line 122
    return-void
.end method

.method public final setResult(I)V
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->setResult(I)V

    .line 127
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->setTheme(I)V

    .line 132
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/android/MMActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMBaseActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    return-void
.end method
