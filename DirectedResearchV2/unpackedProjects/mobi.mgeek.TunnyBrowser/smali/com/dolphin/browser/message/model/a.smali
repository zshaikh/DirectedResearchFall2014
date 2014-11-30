.class public abstract Lcom/dolphin/browser/message/model/a;
.super Ljava/lang/Object;
.source "Command.java"


# static fields
.field private static final f:Lcom/dolphin/browser/message/model/a;


# instance fields
.field private a:Lcom/dolphin/browser/message/model/i;

.field private final b:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/dolphin/browser/message/model/f;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/dolphin/browser/message/model/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/message/model/a;->f:Lcom/dolphin/browser/message/model/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/dolphin/browser/message/model/a;->b:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/dolphin/browser/message/model/a;->c:Lorg/json/JSONObject;

    .line 88
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/message/model/a;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Popup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/dolphin/browser/message/model/k;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/message/model/k;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 73
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v0, "Dialog"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lcom/dolphin/browser/message/model/d;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/message/model/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "OpenURL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Lcom/dolphin/browser/message/model/j;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/message/model/j;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "Launch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Lcom/dolphin/browser/message/model/g;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/message/model/g;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "Notification"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    new-instance v0, Lcom/dolphin/browser/message/model/h;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/message/model/h;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 73
    :cond_4
    sget-object v0, Lcom/dolphin/browser/message/model/a;->f:Lcom/dolphin/browser/message/model/a;

    goto :goto_0
.end method

.method static synthetic e()Lcom/dolphin/browser/message/model/a;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/dolphin/browser/message/model/a;->f:Lcom/dolphin/browser/message/model/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/message/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/dolphin/browser/message/model/a;->e:I

    .line 113
    return-void
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public a(Lcom/dolphin/browser/message/model/i;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dolphin/browser/message/model/a;->a:Lcom/dolphin/browser/message/model/i;

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dolphin/browser/message/model/a;->d:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/message/model/a;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/message/model/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/message/model/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/message/model/a;->a:Lcom/dolphin/browser/message/model/i;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/message/model/a;->a:Lcom/dolphin/browser/message/model/i;

    invoke-interface {v0}, Lcom/dolphin/browser/message/model/i;->a()V

    .line 141
    :cond_0
    return-void
.end method
