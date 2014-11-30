.class public Ldolphin/webkit/bf;
.super Ljava/lang/Object;
.source "ConsoleMessage.java"


# instance fields
.field private a:Ldolphin/webkit/bg;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILdolphin/webkit/bg;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ldolphin/webkit/bf;->b:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Ldolphin/webkit/bf;->c:Ljava/lang/String;

    .line 48
    iput p3, p0, Ldolphin/webkit/bf;->d:I

    .line 49
    iput-object p4, p0, Ldolphin/webkit/bf;->a:Ldolphin/webkit/bg;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ldolphin/webkit/bf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ldolphin/webkit/bf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Ldolphin/webkit/bf;->d:I

    return v0
.end method
