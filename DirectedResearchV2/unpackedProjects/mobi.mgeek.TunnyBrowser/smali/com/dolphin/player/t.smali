.class Lcom/dolphin/player/t;
.super Ljava/lang/Object;
.source "MainPlayActivity.java"

# interfaces
.implements Lcom/dolphin/player/bl;


# instance fields
.field final synthetic a:Lcom/dolphin/player/MainPlayActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/player/MainPlayActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dolphin/player/t;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/player/t;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-virtual {v0}, Lcom/dolphin/player/MainPlayActivity;->finish()V

    .line 235
    return-void
.end method
