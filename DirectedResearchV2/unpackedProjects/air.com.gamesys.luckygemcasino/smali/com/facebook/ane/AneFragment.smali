.class public Lcom/facebook/ane/AneFragment;
.super Landroid/support/v4/app/Fragment;
.source "AneFragment.java"


# static fields
.field protected static asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->getContext()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    sput-object v0, Lcom/facebook/ane/AneFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method protected handleNullAsContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AS context is null in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", please restart the app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/facebook/ane/AneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/facebook/ane/AneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 31
    :cond_0
    return-void
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "resourceId"    # I

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/ane/AneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ane/AneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method
