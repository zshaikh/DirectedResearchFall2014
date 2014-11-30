.class Ldolphin/preference/ak;
.super Ljava/lang/Object;
.source "SetUserAgentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/preference/aj;


# direct methods
.method constructor <init>(Ldolphin/preference/aj;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Ldolphin/preference/ak;->a:Ldolphin/preference/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ldolphin/preference/ak;->a:Ldolphin/preference/aj;

    invoke-static {v0}, Ldolphin/preference/aj;->a(Ldolphin/preference/aj;)Z

    .line 71
    return-void
.end method
