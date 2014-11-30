.class public Lcom/redbox/android/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static instance:Lcom/redbox/android/controller/Controller;


# instance fields
.field private context:Landroid/content/Context;

.field private store:Lcom/redbox/android/adapter/RBCookieStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getController()Lcom/redbox/android/controller/Controller;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/redbox/android/controller/Controller;->instance:Lcom/redbox/android/controller/Controller;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/redbox/android/controller/Controller;

    invoke-direct {v0}, Lcom/redbox/android/controller/Controller;-><init>()V

    sput-object v0, Lcom/redbox/android/controller/Controller;->instance:Lcom/redbox/android/controller/Controller;

    .line 27
    :cond_0
    sget-object v0, Lcom/redbox/android/controller/Controller;->instance:Lcom/redbox/android/controller/Controller;

    return-object v0
.end method


# virtual methods
.method public getCookieStore()Lcom/redbox/android/adapter/RBCookieStore;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/redbox/android/controller/Controller;->store:Lcom/redbox/android/adapter/RBCookieStore;

    return-object v0
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/redbox/android/controller/Controller;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/redbox/android/adapter/RBCookieStore;

    invoke-direct {v0, p1}, Lcom/redbox/android/adapter/RBCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/redbox/android/controller/Controller;->store:Lcom/redbox/android/adapter/RBCookieStore;

    .line 42
    return-void
.end method
