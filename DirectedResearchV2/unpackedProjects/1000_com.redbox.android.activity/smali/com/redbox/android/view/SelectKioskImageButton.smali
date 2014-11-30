.class public Lcom/redbox/android/view/SelectKioskImageButton;
.super Landroid/widget/ImageButton;
.source "SelectKioskImageButton.java"


# instance fields
.field kiosk:Lcom/redbox/android/model/Kiosk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getKiosk()Lcom/redbox/android/model/Kiosk;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/redbox/android/view/SelectKioskImageButton;->kiosk:Lcom/redbox/android/model/Kiosk;

    return-object v0
.end method

.method public setKiosk(Lcom/redbox/android/model/Kiosk;)V
    .locals 0
    .param p1, "k"    # Lcom/redbox/android/model/Kiosk;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/redbox/android/view/SelectKioskImageButton;->kiosk:Lcom/redbox/android/model/Kiosk;

    .line 26
    return-void
.end method
