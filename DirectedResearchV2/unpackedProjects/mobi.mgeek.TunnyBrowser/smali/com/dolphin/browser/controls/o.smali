.class final Lcom/dolphin/browser/controls/o;
.super Ljava/lang/Object;
.source "GridLayout.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2012
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/o;->a()V

    .line 2013
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    iput p1, p0, Lcom/dolphin/browser/controls/o;->a:I

    .line 2017
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2020
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dolphin/browser/controls/o;->a:I

    .line 2021
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2025
    iget v0, p0, Lcom/dolphin/browser/controls/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
