.class Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;
.super Ljava/lang/Object;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MraidListenerInfo"
.end annotation


# instance fields
.field private mMraidListener:Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

.field private mOnCloseButtonListener:Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;

.field private mOnOpenListener:Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;)Lcom/fusepowered/m2/m2l/MraidView$MraidListener;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;->mMraidListener:Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;Lcom/fusepowered/m2/m2l/MraidView$MraidListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;->mMraidListener:Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    return-void
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;

    return-void
.end method

.method static synthetic access$3(Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;)Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;

    return-void
.end method

.method static synthetic access$5(Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;)Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/fusepowered/m2/m2l/MraidView$OnOpenListener;

    return-object v0
.end method
