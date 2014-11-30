.class public Lcom/facebook/ane/AneButton;
.super Landroid/widget/Button;
.source "AneButton.java"


# static fields
.field protected static asContext:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->getContext()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    sput-object v0, Lcom/facebook/ane/AneButton;->asContext:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public obtainStyledAttributes(Landroid/util/AttributeSet;I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "resourceId"    # I

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/facebook/ane/AneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ane/AneButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method
