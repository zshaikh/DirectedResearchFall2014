.class Ldolphin/webkit/gg;
.super Ljava/lang/Object;
.source "Prereader.java"

# interfaces
.implements Ldolphin/webkit/ht;


# instance fields
.field final synthetic a:Ldolphin/webkit/Prereader;


# direct methods
.method private constructor <init>(Ldolphin/webkit/Prereader;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Ldolphin/webkit/gg;->a:Ldolphin/webkit/Prereader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Ldolphin/webkit/gg;-><init>(Ldolphin/webkit/Prereader;)V

    return-void
.end method


# virtual methods
.method public a(Ldolphin/webkit/WebSettingsClassic;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ldolphin/webkit/gg;->a:Ldolphin/webkit/Prereader;

    invoke-static {v0}, Ldolphin/webkit/Prereader;->e(Ldolphin/webkit/Prereader;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Ldolphin/webkit/gg;->a:Ldolphin/webkit/Prereader;

    invoke-static {v0}, Ldolphin/webkit/Prereader;->e(Ldolphin/webkit/Prereader;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebSettingsClassic;->syncFromOther(Ldolphin/webkit/WebSettingsClassic;)V

    .line 163
    :cond_0
    return-void
.end method
