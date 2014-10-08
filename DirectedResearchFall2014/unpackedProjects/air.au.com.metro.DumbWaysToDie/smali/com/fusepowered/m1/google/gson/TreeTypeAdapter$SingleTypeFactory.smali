.class Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/fusepowered/m1/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/fusepowered/m1/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/fusepowered/m1/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .param p3, "matchRawType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "exactType":Lcom/fusepowered/m1/google/gson/reflect/TypeToken;, "Lcom/fusepowered/m1/google/gson/reflect/TypeToken<*>;"
    .local p4, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    instance-of v1, p1, Lcom/fusepowered/m1/google/gson/JsonSerializer;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/fusepowered/m1/google/gson/JsonSerializer;

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/fusepowered/m1/google/gson/JsonSerializer;

    .line 121
    instance-of v1, p1, Lcom/fusepowered/m1/google/gson/JsonDeserializer;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/fusepowered/m1/google/gson/JsonDeserializer;

    .end local p1    # "typeAdapter":Ljava/lang/Object;
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/fusepowered/m1/google/gson/JsonDeserializer;

    .line 124
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/fusepowered/m1/google/gson/JsonSerializer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/fusepowered/m1/google/gson/JsonDeserializer;

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 125
    iput-object p2, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    .line 126
    iput-boolean p3, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 127
    iput-object p4, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 128
    return-void

    .restart local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_1
    move-object v1, v2

    .line 118
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 121
    goto :goto_1

    .line 124
    .end local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fusepowered/m1/google/gson/reflect/TypeToken;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/Class;
    .param p5, "x4"    # Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$1;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .locals 8
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
    .local p2, "type":Lcom/fusepowered/m1/google/gson/reflect/TypeToken;, "Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    const/4 v6, 0x0

    .line 132
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v7, v0

    .line 135
    .local v7, "matches":Z
    :goto_0
    if-eqz v7, :cond_3

    new-instance v0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/fusepowered/m1/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/fusepowered/m1/google/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter;-><init>(Lcom/fusepowered/m1/google/gson/JsonSerializer;Lcom/fusepowered/m1/google/gson/JsonDeserializer;Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;Lcom/fusepowered/m1/google/gson/TypeAdapterFactory;Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$1;)V

    :goto_1
    return-object v0

    .line 132
    .end local v7    # "matches":Z
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    move v7, v0

    goto :goto_0

    .restart local v7    # "matches":Z
    :cond_3
    move-object v0, v6

    .line 135
    goto :goto_1
.end method
