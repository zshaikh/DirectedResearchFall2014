.class Lcom/kochava/android/tracker/Feature$2;
.super Landroid/os/Handler;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/android/tracker/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kochava/android/tracker/Feature;


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/Feature;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    .line 872
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kochava/android/tracker/Feature$2;)Lcom/kochava/android/tracker/Feature;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 880
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sendonstart"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 884
    .local v11, "sendOnStart":Z
    new-instance v12, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 885
    .local v12, "tempWV":Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$1(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v12}, Landroid/webkit/WebView;->destroy()V

    .line 888
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->getCarrier()Ljava/lang/String;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$2(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$3(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->getModel()Ljava/lang/String;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$4(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$5(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const-string v1, "Default"

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$6(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const-string v1, "N/A"

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$7(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$8(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/util/OpenUDID;->syncContext(Landroid/content/Context;)V

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 908
    .local v10, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 917
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    if-eqz v6, :cond_a

    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object p1, v1

    .end local p1    # "msg":Landroid/os/Message;
    :goto_1
    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/kochava/android/tracker/Feature;->access$6(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 919
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAppName now: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mAppName:Ljava/lang/String;
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$9(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 929
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$7(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 930
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAppVersionCode now: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mAppVersionCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$10(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 940
    :cond_2
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$8(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 941
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAppVersionName now: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mAppVersionName:Ljava/lang/String;
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$11(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 951
    :cond_3
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 952
    .local v13, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$12(Lcom/kochava/android/tracker/Feature;I)V

    .line 953
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$13(Lcom/kochava/android/tracker/Feature;I)V

    .line 954
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 956
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mDisplayHeight:I
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$14(Lcom/kochava/android/tracker/Feature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mDisplayWidth:I
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$15(Lcom/kochava/android/tracker/Feature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 967
    .end local v13    # "wm":Landroid/view/WindowManager;
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$17(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$18(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "initPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$19(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V

    .line 987
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 989
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 992
    :cond_5
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kochavaappdata"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 995
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$21(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kochavaappdata"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/android/tracker/KochavaDbAdapter;->getApplicationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 997
    .local v7, "dd":Ljava/lang/String;
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->createAppData()Ljava/lang/String;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$22(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v9

    .line 1000
    .local v9, "kk":Ljava/lang/String;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 1001
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[KOCHAVA] Stored Data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[KOCHAVA] Created Data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_6
    if-nez v7, :cond_b

    .line 1008
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$21(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kochavaappdata"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/kochava/android/tracker/KochavaDbAdapter;->insertApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$23(I)V

    .line 1026
    .end local v7    # "dd":Ljava/lang/String;
    .end local v9    # "kk":Ljava/lang/String;
    :goto_6
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$21(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/kochava/android/tracker/KochavaDbAdapter;->cleanupEvents(J)V

    .line 1029
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$25(Lcom/kochava/android/tracker/Feature;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1031
    :cond_7
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "KochavaTracker"

    const-string v1, "Initial event has not yet been qued in the database, making initial call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_8
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const-string v1, "initial"

    const/4 v2, 0x0

    # invokes: Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, v1, v2}, Lcom/kochava/android/tracker/Feature;->access$26(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V

    .line 1036
    :cond_9
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$27(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V

    .line 1037
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$28(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$1;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$1;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 1042
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    .line 1037
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1047
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$29(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V

    .line 1051
    if-nez v11, :cond_f

    .line 1053
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->initTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$30(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$2;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$2;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 1061
    const-wide/32 v2, 0x927c0

    .line 1053
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1083
    :goto_7
    return-void

    .line 910
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 912
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    .line 913
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_6
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    .line 914
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error gathering app name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 921
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 923
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_1

    .line 924
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error gathering app name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 917
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_a
    :try_start_7
    const-string v1, "(unknown)"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object p1, v1

    goto/16 :goto_1

    .line 932
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local p1    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 934
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_2

    .line 935
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error gathering app version code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 943
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 945
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_3

    .line 946
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error gathering app version name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 959
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    move-object v8, v0

    .line 961
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_4

    .line 962
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1011
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "dd":Ljava/lang/String;
    .restart local v9    # "kk":Ljava/lang/String;
    :cond_b
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1013
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$21(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kochavaappdata"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/kochava/android/tracker/KochavaDbAdapter;->updateApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1017
    :cond_c
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "KochavaTracker"

    const-string v1, "Set start of life to false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_d
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$24(Lcom/kochava/android/tracker/Feature;Z)V

    goto/16 :goto_6

    .line 1023
    .end local v7    # "dd":Ljava/lang/String;
    .end local v9    # "kk":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$24(Lcom/kochava/android/tracker/Feature;Z)V

    goto/16 :goto_6

    .line 1065
    :cond_f
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->initTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$30(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$3;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$3;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 1073
    const-wide/16 v2, 0x7d0

    .line 1065
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1075
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$32(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V

    .line 1076
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mTimerSendOnBegin:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$33(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$4;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$4;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 1081
    const-wide/16 v2, 0xfa0

    .line 1076
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_7
.end method
