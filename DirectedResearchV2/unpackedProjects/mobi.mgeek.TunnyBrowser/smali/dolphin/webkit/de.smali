.class Ldolphin/webkit/de;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/player/aj;

.field final synthetic b:Ldolphin/webkit/dd;


# direct methods
.method constructor <init>(Ldolphin/webkit/dd;Lcom/dolphin/player/aj;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Ldolphin/webkit/de;->b:Ldolphin/webkit/dd;

    iput-object p2, p0, Ldolphin/webkit/de;->a:Lcom/dolphin/player/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ldolphin/webkit/de;->a:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->n()V

    .line 124
    return-void
.end method
