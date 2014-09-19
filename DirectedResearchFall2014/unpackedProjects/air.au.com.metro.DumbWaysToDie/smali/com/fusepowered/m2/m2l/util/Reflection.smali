.class public Lcom/fusepowered/m2/m2l/util/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/util/Reflection$MethodBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getDeclaredMethodWithTraversal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .parameter "methodName"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 90
    .local v0, currentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-nez v0, :cond_0

    .line 99
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-direct {v3}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v3

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .local v2, method:Ljava/lang/reflect/Method;
    return-object v2

    .line 94
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
