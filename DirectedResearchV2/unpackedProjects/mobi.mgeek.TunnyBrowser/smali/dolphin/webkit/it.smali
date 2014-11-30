.class Ldolphin/webkit/it;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field final synthetic d:Ldolphin/webkit/in;


# direct methods
.method private constructor <init>(Ldolphin/webkit/in;)V
    .locals 0

    .prologue
    .line 9449
    iput-object p1, p0, Ldolphin/webkit/it;->d:Ldolphin/webkit/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/in;Ldolphin/webkit/ic;)V
    .locals 0

    .prologue
    .line 9449
    invoke-direct {p0, p1}, Ldolphin/webkit/it;-><init>(Ldolphin/webkit/in;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9464
    iget-object v0, p0, Ldolphin/webkit/it;->a:Ljava/lang/String;

    return-object v0
.end method
