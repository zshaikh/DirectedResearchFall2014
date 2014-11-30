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

    .line 727
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kochava/android/tracker/Feature$2;)Lcom/kochava/android/tracker/Feature;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 735
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sendonstart"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 739
    .local v9, "sendOnStart":Z
    new-instance v10, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 740
    .local v10, "tempWV":Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$1(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 741
    invoke-virtual {v10}, Landroid/webkit/WebView;->destroy()V

    .line 743
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->getCarrier()Ljava/lang/String;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$2(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$3(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->getModel()Ljava/lang/String;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$4(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$5(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const-string v1, "Default"

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$6(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const-string v1, "N/A"

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$7(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/android/util/OpenUDID;->syncContext(Landroid/content/Context;)V

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

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

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$6(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 758
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

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$7(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 764
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 765
    .local v11, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$8(Lcom/kochava/android/tracker/Feature;I)V

    .line 766
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$9(Lcom/kochava/android/tracker/Feature;I)V

    .line 767
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 769
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mDisplayHeight:I
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$10(Lcom/kochava/android/tracker/Feature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mDisplayWidth:I
    invoke-static {v2}, Lcom/kochava/android/tracker/Feature;->access$11(Lcom/kochava/android/tracker/Feature;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 785
    .end local v11    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_1
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

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$12(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$13(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$14(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$0(Lcom/kochava/android/tracker/Feature;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "initPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$15(Lcom/kochava/android/tracker/Feature;Landroid/content/SharedPreferences;)V

    .line 805
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "kochavaappdata"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 813
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$17(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kochavaappdata"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/android/tracker/KochavaDbAdapter;->getApplicationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 815
    .local v6, "dd":Ljava/lang/String;
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # invokes: Lcom/kochava/android/tracker/Feature;->createAppData()Ljava/lang/String;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$18(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v8

    .line 818
    .local v8, "kk":Ljava/lang/String;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 819
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[KOCHAVA] Stored Data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[KOCHAVA] Created Data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_2
    if-nez v6, :cond_6

    .line 826
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$17(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kochavaappdata"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/kochava/android/tracker/KochavaDbAdapter;->insertApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$19(I)V

    .line 844
    .end local v6    # "dd":Ljava/lang/String;
    .end local v8    # "kk":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$17(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/kochava/android/tracker/KochavaDbAdapter;->cleanupEvents(J)V

    .line 847
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mIsStartOfLife:Z
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$21(Lcom/kochava/android/tracker/Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initBool"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 849
    :cond_3
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "KochavaTracker"

    const-string v1, "Initial event has not yet been qued in the database, making initial call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const-string v1, "initial"

    const/4 v2, 0x0

    # invokes: Lcom/kochava/android/tracker/Feature;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, v1, v2}, Lcom/kochava/android/tracker/Feature;->access$22(Lcom/kochava/android/tracker/Feature;Ljava/lang/String;Ljava/util/Map;)V

    .line 854
    :cond_5
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$23(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V

    .line 855
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$24(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$1;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$1;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 860
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    .line 855
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 865
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$25(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V

    .line 869
    if-nez v9, :cond_a

    .line 871
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->initTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$26(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$2;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$2;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 879
    const-wide/32 v2, 0x927c0

    .line 871
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 901
    :goto_3
    return-void

    .line 772
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 774
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUGERROR:Z

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "KochavaTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 829
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dd":Ljava/lang/String;
    .restart local v8    # "kk":Ljava/lang/String;
    :cond_6
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 831
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->kDbAdapter:Lcom/kochava/android/tracker/KochavaDbAdapter;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$17(Lcom/kochava/android/tracker/Feature;)Lcom/kochava/android/tracker/KochavaDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/kochava/android/tracker/Feature;->access$16(Lcom/kochava/android/tracker/Feature;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "kochavaappdata"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/kochava/android/tracker/KochavaDbAdapter;->updateApplicationData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 835
    :cond_7
    sget-boolean v0, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "KochavaTracker"

    const-string v1, "Set start of life to false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_8
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;Z)V

    goto/16 :goto_2

    .line 841
    .end local v6    # "dd":Ljava/lang/String;
    .end local v8    # "kk":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$20(Lcom/kochava/android/tracker/Feature;Z)V

    goto/16 :goto_2

    .line 883
    :cond_a
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->initTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$26(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$3;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$3;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 891
    const-wide/16 v2, 0x7d0

    .line 883
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 893
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/kochava/android/tracker/Feature;->access$28(Lcom/kochava/android/tracker/Feature;Ljava/util/Timer;)V

    .line 894
    iget-object v0, p0, Lcom/kochava/android/tracker/Feature$2;->this$0:Lcom/kochava/android/tracker/Feature;

    # getter for: Lcom/kochava/android/tracker/Feature;->mTimerSendOnBegin:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kochava/android/tracker/Feature;->access$29(Lcom/kochava/android/tracker/Feature;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/kochava/android/tracker/Feature$2$4;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/Feature$2$4;-><init>(Lcom/kochava/android/tracker/Feature$2;)V

    .line 899
    const-wide/16 v2, 0xfa0

    .line 894
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 760
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
