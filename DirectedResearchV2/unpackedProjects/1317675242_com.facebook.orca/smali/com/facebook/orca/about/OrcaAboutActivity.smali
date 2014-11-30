.class public Lcom/facebook/orca/about/OrcaAboutActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "OrcaAboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/about/OrcaAboutActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/about/OrcaAboutActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/facebook/orca/about/OrcaAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 24
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 25
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 28
    return-object v2
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 33
    invoke-virtual {p0, v1}, Lcom/facebook/orca/about/OrcaAboutActivity;->requestWindowFeature(I)Z

    .line 34
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f02002b

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->setFeatureDrawableResource(II)V

    .line 37
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 38
    new-instance v1, Lcom/facebook/orca/about/OrcaAboutActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/about/OrcaAboutActivity$1;-><init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/about/OrcaAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/about/OrcaAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 57
    const/high16 v2, 0x7f060000

    invoke-direct {p0, v2}, Lcom/facebook/orca/about/OrcaAboutActivity;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    const-string v3, "[0-9]+.[0-9]+.[0-9]+"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/about/OrcaAboutActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/about/OrcaAboutActivity$2;-><init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/about/OrcaAboutActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/about/OrcaAboutActivity$3;-><init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :catch_1
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
