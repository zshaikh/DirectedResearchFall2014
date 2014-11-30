.class public Lcom/fusepowered/m2/m2l/MraidView$BaseMraidListener;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/MraidView$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseMraidListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V
    .locals 0
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;
    .param p2, "newViewState"    # Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .prologue
    .line 401
    return-void
.end method

.method public onExpand(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 400
    return-void
.end method

.method public onFailure(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 399
    return-void
.end method

.method public onReady(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 398
    return-void
.end method
