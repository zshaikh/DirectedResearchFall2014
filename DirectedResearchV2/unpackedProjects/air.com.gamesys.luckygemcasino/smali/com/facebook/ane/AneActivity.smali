.class public Lcom/facebook/ane/AneActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AneActivity.java"


# static fields
.field protected static asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->getContext()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    sput-object v0, Lcom/facebook/ane/AneActivity;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainStyledAttributes(Landroid/util/AttributeSet;I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "resourceId"    # I

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/facebook/ane/AneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ane/AneActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method
