.class public Lcom/acmeaom/android/myradar/app/activity/LicenseView;
.super Landroid/app/Activity;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/LicenseView;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 41
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/app/Activity;Z)V

    .line 23
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/LicenseView;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/LicenseView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/LicenseView;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/LicenseView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/LicenseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 57
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/LicenseView;->finish()V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
