.class Ldolphin/preference/w;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/preference/v;


# direct methods
.method constructor <init>(Ldolphin/preference/v;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Ldolphin/preference/w;->a:Ldolphin/preference/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldolphin/preference/w;->a:Ldolphin/preference/v;

    invoke-static {v0}, Ldolphin/preference/v;->a(Ldolphin/preference/v;)V

    .line 89
    return-void
.end method
