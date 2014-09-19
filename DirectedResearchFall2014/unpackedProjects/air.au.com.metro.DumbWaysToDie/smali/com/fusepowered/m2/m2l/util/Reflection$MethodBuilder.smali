.class public Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;
.super Ljava/lang/Object;
.source "Reflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/util/Reflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodBuilder"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mInstance:Ljava/lang/Object;

.field private mIsAccessible:Z

.field private final mMethodName:Ljava/lang/String;

.field private mParameterClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "instance"
    .parameter "methodName"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mInstance:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mMethodName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mParameterClasses:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mParameters:Ljava/util/List;

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mClass:Ljava/lang/Class;

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, parameter:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mParameterClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mParameters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mParameterClasses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/Class;

    .line 73
    .local v0, classArray:[Ljava/lang/Class;
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mParameterClasses:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    .line 75
    .local v2, parameterTypes:[Ljava/lang/Class;
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mMethodName:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/fusepowered/m2/m2l/util/Reflection;->getDeclaredMethodWithTraversal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    .local v1, method:Ljava/lang/reflect/Method;
    iget-boolean v4, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mIsAccessible:Z

    if-eqz v4, :cond_0

    .line 78
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mParameters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 82
    .local v3, parameters:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mInstance:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public setAccessible()Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;->mIsAccessible:Z

    .line 68
    return-object p0
.end method
