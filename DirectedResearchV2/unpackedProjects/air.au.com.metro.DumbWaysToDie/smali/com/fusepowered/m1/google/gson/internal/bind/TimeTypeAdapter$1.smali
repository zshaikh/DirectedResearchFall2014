.class final Lcom/fusepowered/m1/google/gson/internal/bind/TimeTypeAdapter$1;
.super Ljava/lang/Object;
.source "TimeTypeAdapter.java"

# interfaces
.implements Lcom/fusepowered/m1/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/internal/bind/TimeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lcom/fusepowered/m1/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/m1/google/gson/Gson;",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/m1/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "typeToken":Lcom/fusepowered/m1/google/gson/reflect/TypeToken;, "Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Time;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/bind/TimeTypeAdapter;

    invoke-direct {v0}, Lcom/fusepowered/m1/google/gson/internal/bind/TimeTypeAdapter;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method