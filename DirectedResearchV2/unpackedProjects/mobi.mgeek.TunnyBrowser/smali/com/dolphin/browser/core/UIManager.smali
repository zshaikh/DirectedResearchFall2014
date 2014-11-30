.class public Lcom/dolphin/browser/core/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/UIManager;

.field private static final b:Lcom/dolphin/browser/core/IUI;


# instance fields
.field private c:Lcom/dolphin/browser/core/IUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/dolphin/browser/core/ba;

    invoke-direct {v0}, Lcom/dolphin/browser/core/ba;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/UIManager;->b:Lcom/dolphin/browser/core/IUI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/dolphin/browser/core/UIManager;->b:Lcom/dolphin/browser/core/IUI;

    iput-object v0, p0, Lcom/dolphin/browser/core/UIManager;->c:Lcom/dolphin/browser/core/IUI;

    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/core/UIManager;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/dolphin/browser/core/UIManager;->a:Lcom/dolphin/browser/core/UIManager;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/dolphin/browser/core/UIManager;

    invoke-direct {v0}, Lcom/dolphin/browser/core/UIManager;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/UIManager;->a:Lcom/dolphin/browser/core/UIManager;

    .line 18
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/UIManager;->a:Lcom/dolphin/browser/core/UIManager;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/IUI;)V
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/core/UIManager;->c:Lcom/dolphin/browser/core/IUI;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/UIManager;->b:Lcom/dolphin/browser/core/IUI;

    iput-object v0, p0, Lcom/dolphin/browser/core/UIManager;->c:Lcom/dolphin/browser/core/IUI;

    goto :goto_0
.end method

.method public getUI()Lcom/dolphin/browser/core/IUI;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/core/UIManager;->c:Lcom/dolphin/browser/core/IUI;

    return-object v0
.end method
