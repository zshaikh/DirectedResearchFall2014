.class Ldolphin/webkit/lo;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Z

.field final b:Z

.field final c:Z

.field final synthetic d:Ldolphin/webkit/ll;


# direct methods
.method public constructor <init>(Ldolphin/webkit/ll;ZZZ)V
    .locals 0

    .prologue
    .line 1134
    iput-object p1, p0, Ldolphin/webkit/lo;->d:Ldolphin/webkit/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iput-boolean p2, p0, Ldolphin/webkit/lo;->a:Z

    .line 1136
    iput-boolean p3, p0, Ldolphin/webkit/lo;->b:Z

    .line 1137
    iput-boolean p4, p0, Ldolphin/webkit/lo;->c:Z

    .line 1138
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1141
    iget-object v0, p0, Ldolphin/webkit/lo;->d:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Ldolphin/webkit/lo;->d:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->g(Ldolphin/webkit/ll;)F

    move-result v0

    .line 1146
    iget-object v1, p0, Ldolphin/webkit/lo;->d:Ldolphin/webkit/ll;

    invoke-static {v1}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ldolphin/webkit/lo;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ldolphin/webkit/lo;->b:Z

    if-eqz v1, :cond_0

    .line 1149
    iget-object v0, p0, Ldolphin/webkit/lo;->d:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->v()F

    move-result v0

    .line 1151
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/lo;->d:Ldolphin/webkit/ll;

    iget-boolean v2, p0, Ldolphin/webkit/lo;->a:Z

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;FZZ)V

    .line 1153
    iget-object v0, p0, Ldolphin/webkit/lo;->d:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->D()V

    .line 1155
    :cond_1
    return-void
.end method
