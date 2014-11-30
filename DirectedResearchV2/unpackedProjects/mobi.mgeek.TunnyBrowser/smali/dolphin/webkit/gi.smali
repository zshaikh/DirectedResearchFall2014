.class Ldolphin/webkit/gi;
.super Ldolphin/webkit/WebBackForwardListClient;
.source "Prereader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/Prereader;


# direct methods
.method private constructor <init>(Ldolphin/webkit/Prereader;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Ldolphin/webkit/gi;->a:Ldolphin/webkit/Prereader;

    invoke-direct {p0}, Ldolphin/webkit/WebBackForwardListClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Ldolphin/webkit/gi;-><init>(Ldolphin/webkit/Prereader;)V

    return-void
.end method


# virtual methods
.method public onIndexChanged(Ldolphin/webkit/WebHistoryItem;I)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onNewHistoryItem(Ldolphin/webkit/WebHistoryItem;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Ldolphin/webkit/gi;->a:Ldolphin/webkit/Prereader;

    sget-object v1, Ldolphin/webkit/gm;->c:Ldolphin/webkit/gm;

    invoke-static {v0, v1, p1}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/Prereader;Ldolphin/webkit/gm;Ljava/lang/Object;)V

    .line 148
    return-void
.end method
