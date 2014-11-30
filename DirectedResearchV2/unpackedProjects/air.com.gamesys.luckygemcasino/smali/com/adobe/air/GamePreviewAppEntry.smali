.class public Lcom/adobe/air/GamePreviewAppEntry;
.super Landroid/app/Activity;
.source "GamePreviewAppEntry.java"


# static fields
.field private static final GAME_PREVIEW_APP_XML:Ljava/lang/String; = "assets/META-INF/AIR/GamePreview-app.xml"

.field private static final GAME_PREVIEW_SRC_DIR:Ljava/lang/String; = "assets"

.field private static final GAME_PREVIEW_SWF:Ljava/lang/String; = "assets/GamePreview.swf"

.field private static final LOG_TAG:Ljava/lang/String; = "AppEntry"

.field private static final RESOURCE_BUTTON_EXIT:Ljava/lang/String; = "string.button_exit"

.field private static final RESOURCE_BUTTON_INSTALL:Ljava/lang/String; = "string.button_install"

.field private static final RESOURCE_CLASS:Ljava/lang/String; = "air.com.adobe.appentry.R"

.field private static final RESOURCE_TEXT_RUNTIME_REQUIRED:Ljava/lang/String; = "string.text_runtime_required"

.field private static final RESOURCE_TITLE_ADOBE_AIR:Ljava/lang/String; = "string.title_adobe_air"

.field private static RUNTIME_PACKAGE_ID:Ljava/lang/String;

.field private static sAndroidActivityWrapper:Ljava/lang/Object;

.field private static sAndroidActivityWrapperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sDloader:Ldalvik/system/DexClassLoader;

.field private static sRuntimeClassesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 61
    const-string v0, "com.adobe.air"

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/GamePreviewAppEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private varargs InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 335
    sget-boolean v1, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-nez v1, :cond_0

    .line 350
    :goto_0
    return-object v0

    .line 341
    :cond_0
    if-eqz p2, :cond_1

    .line 342
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private InvokeWrapperOnCreate()V
    .locals 9

    .prologue
    .line 312
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 317
    const-string v1, "assets/META-INF/AIR/GamePreview-app.xml"

    .line 318
    const-string v2, "assets"

    .line 319
    const-string v3, "-nodebug"

    .line 320
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    .line 321
    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    .line 322
    new-instance v6, Ljava/lang/Boolean;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 323
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 325
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static KillSelf()V
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->launchMarketPlaceForAIR()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->loadSharedRuntimeDex()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/GamePreviewAppEntry;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/air/GamePreviewAppEntry;->createActivityWrapper(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeWrapperOnCreate()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/adobe/air/GamePreviewAppEntry;->KillSelf()V

    return-void
.end method

.method private createActivityWrapper(Z)V
    .locals 5

    .prologue
    .line 603
    if-eqz p1, :cond_0

    .line 605
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "CreateAndroidActivityWrapper"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 606
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 618
    :goto_0
    return-void

    .line 610
    :cond_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "CreateAndroidActivityWrapper"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 611
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isRuntimeInstalled()Z
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRuntimeOnExternalStorage()Z
    .locals 4

    .prologue
    const/high16 v3, 0x40000

    .line 138
    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchAIRService()V
    .locals 3

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.adobe.air.AIRServiceAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const-string v2, "com.adobe.air.AIRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$4;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$4;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    .line 299
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private launchMarketPlaceForAIR()V
    .locals 4

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 90
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 93
    if-eqz v0, :cond_1

    .line 95
    const-string v2, "airDownloadURL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    :try_start_1
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/GamePreviewAppEntry;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_1
    return-void

    .line 99
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private loadCaptiveRuntimeClasses()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 557
    const/4 v1, 0x0

    .line 561
    :try_start_0
    const-string v2, "com.adobe.air.AndroidActivityWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :try_start_1
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 569
    :cond_0
    :goto_0
    return v0

    .line 565
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private loadSharedRuntimeDex()V
    .locals 5

    .prologue
    .line 578
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-nez v0, :cond_0

    .line 581
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 582
    new-instance v1, Ldalvik/system/DexClassLoader;

    sget-object v2, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    .line 587
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    const-string v1, "com.adobe.air.AndroidActivityWrapper"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    .line 588
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialog(ILjava/lang/String;II)V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$1;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$2;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$3;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 180
    return-void
.end method

.method private showRuntimeNotInstalledDialog()V
    .locals 5

    .prologue
    .line 190
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v1, "air.com.adobe.appentry.R"

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string.text_runtime_required"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "string.text_install_runtime"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/adobe/air/GamePreviewAppEntry;->showDialog(ILjava/lang/String;II)V

    .line 196
    return-void
.end method

.method private showRuntimeOnExternalStorageDialog()V
    .locals 5

    .prologue
    .line 200
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v1, "air.com.adobe.appentry.R"

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string.text_runtime_required"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "string.text_runtime_on_external_storage"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/adobe/air/GamePreviewAppEntry;->showDialog(ILjava/lang/String;II)V

    .line 206
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 486
    const/4 v2, 0x0

    .line 489
    :try_start_0
    sget-object v3, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "dispatchGenericMotionEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 490
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 492
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 468
    const/4 v2, 0x0

    .line 471
    :try_start_0
    sget-object v3, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "dispatchKeyEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 472
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 474
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 5

    .prologue
    .line 623
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 627
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "finishActivityFromChild"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 628
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 643
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "finishFromChild"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 644
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 524
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 527
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 5

    .prologue
    .line 1173
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 1177
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onApplyThemeResource"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Resources$Theme;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1178
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 655
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 659
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onAttachedToWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 660
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 675
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 676
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 1189
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 1193
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onChildTitleChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1194
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    return-void

    .line 1196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 456
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 457
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 687
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 691
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onContentChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 692
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 707
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onContextItemSelected"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MenuItem;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 708
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 713
    :goto_0
    return v0

    .line 710
    :catch_0
    move-exception v0

    move v0, v1

    .line 713
    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 5

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 724
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onContextMenuClosed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/Menu;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 725
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->loadCaptiveRuntimeClasses()Z

    move-result v0

    .line 215
    if-nez v0, :cond_2

    .line 217
    sget-boolean v1, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->isRuntimeInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->isRuntimeOnExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->showRuntimeOnExternalStorageDialog()V

    .line 256
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->showRuntimeNotInstalledDialog()V

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->loadSharedRuntimeDex()V

    .line 232
    :cond_2
    sget-boolean v1, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_3

    .line 234
    invoke-direct {p0, v0}, Lcom/adobe/air/GamePreviewAppEntry;->createActivityWrapper(Z)V

    .line 237
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeWrapperOnCreate()V

    goto :goto_0

    .line 241
    :cond_3
    if-eqz v0, :cond_4

    .line 245
    invoke-static {}, Lcom/adobe/air/GamePreviewAppEntry;->KillSelf()V

    goto :goto_0

    .line 253
    :cond_4
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->launchAIRService()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    .line 736
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 740
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onCreateContextMenu"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/ContextMenu;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/view/ContextMenu$ContextMenuInfo;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 741
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 752
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 756
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDescription"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 757
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-object v0

    .line 759
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 762
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 1205
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 1209
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDialog"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1210
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :goto_0
    return-object v0

    .line 1212
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1215
    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 1222
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 1226
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDialog"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1227
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :goto_0
    return-object v0

    .line 1229
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1232
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 769
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 773
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateOptionsMenu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 774
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 779
    :goto_0
    return v0

    .line 776
    :catch_0
    move-exception v0

    move v0, v1

    .line 779
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 786
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    .line 790
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreatePanelMenu"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 791
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 796
    :goto_0
    return v0

    .line 793
    :catch_0
    move-exception v0

    move v0, v1

    .line 796
    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 6

    .prologue
    .line 803
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v1

    .line 807
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreatePanelView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 808
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    return-object v0

    .line 810
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 813
    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 6

    .prologue
    .line 820
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v1

    .line 824
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateThumbnail"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Canvas;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 825
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 830
    :goto_0
    return v0

    .line 827
    :catch_0
    move-exception v0

    move v0, v1

    .line 830
    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    .prologue
    .line 837
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 841
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateView"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/util/AttributeSet;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 842
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-object v0

    .line 844
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 847
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 439
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 440
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 854
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 858
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 859
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 870
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 874
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyDown"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 875
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 880
    :goto_0
    return v0

    .line 877
    :catch_0
    move-exception v0

    move v0, v1

    .line 880
    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 887
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 891
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyLongPress"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 892
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 897
    :goto_0
    return v0

    .line 894
    :catch_0
    move-exception v0

    move v0, v1

    .line 897
    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 904
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 908
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyMultiple"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 909
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 914
    :goto_0
    return v0

    .line 911
    :catch_0
    move-exception v0

    move v0, v1

    .line 914
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 921
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 925
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyUp"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 926
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 931
    :goto_0
    return v0

    .line 928
    :catch_0
    move-exception v0

    move v0, v1

    .line 931
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 510
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 511
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 938
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    .line 942
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onMenuItemSelected"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/MenuItem;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 943
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 948
    :goto_0
    return v0

    .line 945
    :catch_0
    move-exception v0

    move v0, v1

    .line 948
    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 955
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    .line 959
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onMenuOpened"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 960
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 965
    :goto_0
    return v0

    .line 962
    :catch_0
    move-exception v0

    move v0, v1

    .line 965
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 539
    .line 540
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 546
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onNewIntent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 547
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 973
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 977
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onOptionsItemSelected"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MenuItem;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 978
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 983
    :goto_0
    return v0

    .line 980
    :catch_0
    move-exception v0

    move v0, v1

    .line 983
    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 5

    .prologue
    .line 990
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 994
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onOptionsMenuClosed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/Menu;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 995
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 5

    .prologue
    .line 1006
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1010
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPanelClosed"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/Menu;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1011
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 388
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 391
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1239
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1243
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPostCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1244
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 1255
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1259
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPostResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1260
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :goto_0
    return-void

    .line 1262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    .prologue
    .line 1271
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1275
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPrepareDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/R$id;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Dialog;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1276
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :goto_0
    return-void

    .line 1278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1287
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1291
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPrepareDialog"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/R$id;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Dialog;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1292
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 1022
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1026
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPrepareOptionsMenu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1027
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1032
    :goto_0
    return v0

    .line 1029
    :catch_0
    move-exception v0

    move v0, v1

    .line 1032
    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 1039
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 1043
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPreparePanel"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1044
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1049
    :goto_0
    return v0

    .line 1046
    :catch_0
    move-exception v0

    move v0, v1

    .line 1049
    goto :goto_0
.end method

.method public onRestart()V
    .locals 3

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 370
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onRestart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 373
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1303
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1307
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onRestoreInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1308
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    :goto_0
    return-void

    .line 1310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 406
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 409
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1056
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1060
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onRetainNonConfigurationInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1061
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1066
    :goto_0
    return-object v0

    .line 1063
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1319
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1323
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1324
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :goto_0
    return-void

    .line 1326
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    .line 1073
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v1

    .line 1077
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onSearchRequested"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1078
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1083
    :goto_0
    return v0

    .line 1080
    :catch_0
    move-exception v0

    move v0, v1

    .line 1083
    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 362
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 424
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 425
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 5

    .prologue
    .line 1335
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1339
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onTitleChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1340
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    :goto_0
    return-void

    .line 1342
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1090
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1094
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTouchEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1095
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1100
    :goto_0
    return v0

    .line 1097
    :catch_0
    move-exception v0

    move v0, v1

    .line 1100
    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1107
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1111
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTrackballEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1112
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1118
    :goto_0
    return v0

    .line 1115
    :catch_0
    move-exception v0

    move v0, v1

    .line 1118
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 3

    .prologue
    .line 1125
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1129
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onUserInteraction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1130
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    return-void

    .line 1132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 1351
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1355
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onUserLeaveHint"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1356
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    :goto_0
    return-void

    .line 1358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    .prologue
    .line 1141
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1145
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onWindowAttributesChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/WindowManager$LayoutParams;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1146
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    return-void

    .line 1148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    .line 1157
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1161
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onWindowFocusChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1162
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_0
    return-void

    .line 1164
    :catch_0
    move-exception v0

    goto :goto_0
.end method
