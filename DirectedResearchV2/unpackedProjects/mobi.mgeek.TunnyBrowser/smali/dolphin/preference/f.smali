.class Ldolphin/preference/f;
.super Ljava/lang/Object;
.source "ExpandablePreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/preference/e;


# direct methods
.method constructor <init>(Ldolphin/preference/e;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Ldolphin/preference/f;->a:Ldolphin/preference/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ldolphin/preference/f;->a:Ldolphin/preference/e;

    invoke-static {v0}, Ldolphin/preference/e;->a(Ldolphin/preference/e;)V

    .line 68
    return-void
.end method
