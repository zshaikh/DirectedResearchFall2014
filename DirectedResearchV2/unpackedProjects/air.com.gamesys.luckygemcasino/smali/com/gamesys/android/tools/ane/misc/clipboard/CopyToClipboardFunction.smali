.class public Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "CopyToClipboardFunction.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v5, 0x0

    .line 33
    const-string v4, "n/a"

    .line 35
    .local v4, "textToCopy":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v6, p2

    if-lez v6, :cond_0

    .line 37
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 51
    :cond_0
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .local v3, "sdk":I
    const/16 v6, 0xb

    if-ge v3, v6, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 54
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, v4}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :goto_1
    return-object v5

    .end local v3    # "sdk":I
    :cond_1
    move-object v4, v5

    .line 37
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 42
    .local v2, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    .end local v2    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v2

    .line 44
    .local v2, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    .end local v2    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v2

    .line 46
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v6, Lcom/gamesys/android/tools/ane/misc/clipboard/CopyToClipboardFunction;->TAG:Ljava/lang/String;

    const-string v7, "Unable to retrieve action script parameter"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v2    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v3    # "sdk":I
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 57
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v6, "customer_id"

    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 58
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
