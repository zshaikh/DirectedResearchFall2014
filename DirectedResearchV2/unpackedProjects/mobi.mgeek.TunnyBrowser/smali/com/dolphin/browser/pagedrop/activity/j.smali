.class Lcom/dolphin/browser/pagedrop/activity/j;
.super Lcom/dolphin/browser/util/f;
.source "PageDropChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/j;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/j;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/j;->c([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 638
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Byte;

    .line 640
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/j;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    const-string v3, "pagedrop_pref"

    invoke-virtual {v1, v3, v4}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 641
    const-string v1, "head_imgname"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 642
    const-string v1, ""

    .line 643
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 644
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/j;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 646
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    :cond_0
    const-string v4, "user_name"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    .line 652
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/j;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "android_id"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/dolphin/browser/pagedrop/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 664
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 656
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/16 v3, 0x21

    if-ne v1, v3, :cond_3

    .line 657
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 658
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    .line 659
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/j;->a:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 660
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    .line 661
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    const-string v1, ""

    const/4 v3, 0x3

    const-string v4, "lvjishu@gmail.com"

    const-string v5, "lvjishu"

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/pagedrop/e;->a(Ljava/lang/String;BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
