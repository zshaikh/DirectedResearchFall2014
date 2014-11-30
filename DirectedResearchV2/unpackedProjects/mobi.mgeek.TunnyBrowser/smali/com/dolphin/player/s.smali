.class Lcom/dolphin/player/s;
.super Ljava/lang/Object;
.source "MainPlayActivity.java"

# interfaces
.implements Lcom/dolphin/player/bo;


# instance fields
.field final synthetic a:Lcom/dolphin/player/MainPlayActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/player/MainPlayActivity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dolphin/player/s;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dolphin/player/s;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-static {v0}, Lcom/dolphin/player/MainPlayActivity;->a(Lcom/dolphin/player/MainPlayActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/dolphin/player/s;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-static {v0}, Lcom/dolphin/player/MainPlayActivity;->b(Lcom/dolphin/player/MainPlayActivity;)V

    .line 227
    return-void
.end method
