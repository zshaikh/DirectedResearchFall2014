.class Ldolphin/webkit/dm;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreenEx.java"

# interfaces
.implements Lcom/dolphin/player/a/f;


# instance fields
.field final synthetic a:Ldolphin/webkit/dk;


# direct methods
.method constructor <init>(Ldolphin/webkit/dk;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Ldolphin/webkit/dm;->a:Ldolphin/webkit/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ldolphin/webkit/dm;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Ldolphin/webkit/dm;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->i()V

    .line 167
    :cond_0
    return-void
.end method
