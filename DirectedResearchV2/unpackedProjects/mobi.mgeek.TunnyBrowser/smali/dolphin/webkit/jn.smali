.class Ldolphin/webkit/jn;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/jn;->a:I

    .line 1079
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/jn;->b:Ljava/lang/String;

    .line 1080
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput p1, p0, Ldolphin/webkit/jn;->a:I

    .line 1084
    iput-object p2, p0, Ldolphin/webkit/jn;->b:Ljava/lang/String;

    .line 1085
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Ldolphin/webkit/jn;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Ldolphin/webkit/jn;->b:Ljava/lang/String;

    return-object v0
.end method
