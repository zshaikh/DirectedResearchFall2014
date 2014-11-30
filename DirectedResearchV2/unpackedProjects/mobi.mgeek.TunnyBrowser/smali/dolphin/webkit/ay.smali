.class public final Ldolphin/webkit/ay;
.super Ldolphin/util/j;
.source "ClientCertRequestHandler.java"


# instance fields
.field private final a:Ldolphin/webkit/BrowserFrame;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ldolphin/webkit/gu;


# direct methods
.method constructor <init>(Ldolphin/webkit/BrowserFrame;ILjava/lang/String;Ldolphin/webkit/gu;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    .line 45
    iput-object p1, p0, Ldolphin/webkit/ay;->a:Ldolphin/webkit/BrowserFrame;

    .line 46
    iput p2, p0, Ldolphin/webkit/ay;->b:I

    .line 47
    iput-object p3, p0, Ldolphin/webkit/ay;->c:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Ldolphin/webkit/ay;->d:Ldolphin/webkit/gu;

    .line 49
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ay;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Ldolphin/webkit/ay;->b:I

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/ay;)Ldolphin/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ldolphin/webkit/ay;->a:Ldolphin/webkit/BrowserFrame;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Ldolphin/webkit/ay;->d:Ldolphin/webkit/gu;

    iget-object v1, p0, Ldolphin/webkit/ay;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldolphin/webkit/gu;->a(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ldolphin/webkit/az;

    invoke-direct {v0, p0}, Ldolphin/webkit/az;-><init>(Ldolphin/webkit/ay;)V

    invoke-virtual {p0, v0}, Ldolphin/webkit/ay;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
