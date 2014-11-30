.class public Ldolphin/webkit/a/c/b;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field private static a:Ldolphin/webkit/a/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldolphin/webkit/a/c/b;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Ldolphin/webkit/a/c/b;->a:Ldolphin/webkit/a/c/b;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ldolphin/webkit/a/c/b;

    invoke-direct {v0}, Ldolphin/webkit/a/c/b;-><init>()V

    sput-object v0, Ldolphin/webkit/a/c/b;->a:Ldolphin/webkit/a/c/b;

    .line 99
    :cond_0
    sget-object v0, Ldolphin/webkit/a/c/b;->a:Ldolphin/webkit/a/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Ldolphin/webkit/a/c/c;->a()Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/security/KeyPair;)V
    .locals 3

    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Ldolphin/webkit/a/c/c;->a()Landroid/content/Intent;

    move-result-object v0

    .line 123
    const-string v1, "PKEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 124
    const-string v1, "KEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
