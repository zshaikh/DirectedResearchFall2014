.class public Lcom/nativex/monetization/DialogInputs;
.super Ljava/lang/Object;
.source "DialogInputs.java"


# instance fields
.field private currencyAmount:I

.field private currencyName:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrencyAmount()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/nativex/monetization/DialogInputs;->currencyAmount:I

    return v0
.end method

.method public getCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nativex/monetization/DialogInputs;->currencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nativex/monetization/DialogInputs;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setCurrencyAmount(I)V
    .locals 0
    .param p1, "currencyAmount"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/nativex/monetization/DialogInputs;->currencyAmount:I

    .line 103
    return-void
.end method

.method public setCurrencyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nativex/monetization/DialogInputs;->currencyName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/nativex/monetization/DialogInputs;->icon:Landroid/graphics/drawable/Drawable;

    .line 83
    return-void
.end method
