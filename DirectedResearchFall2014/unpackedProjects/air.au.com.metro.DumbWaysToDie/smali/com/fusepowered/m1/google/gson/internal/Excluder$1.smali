.class Lcom/fusepowered/m1/google/gson/internal/Excluder$1;
.super Lcom/fusepowered/m1/google/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/google/gson/internal/Excluder;->create(Lcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m1/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fusepowered/m1/google/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/fusepowered/m1/google/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/google/gson/internal/Excluder;ZZLcom/fusepowered/m1/google/gson/Gson;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->this$0:Lcom/fusepowered/m1/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$gson:Lcom/fusepowered/m1/google/gson/Gson;

    iput-object p5, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$type:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/fusepowered/m1/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/m1/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    .line 143
    .local v0, "d":Lcom/fusepowered/m1/google/gson/TypeAdapter;, "Lcom/fusepowered/m1/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$gson:Lcom/fusepowered/m1/google/gson/Gson;

    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->this$0:Lcom/fusepowered/m1/google/gson/internal/Excluder;

    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$type:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m1/google/gson/Gson;->getDelegateAdapter(Lcom/fusepowered/m1/google/gson/TypeAdapterFactory;Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Lcom/fusepowered/m1/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->delegate:Lcom/fusepowered/m1/google/gson/TypeAdapter;

    goto :goto_0
.end method


# virtual methods
.method public read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lcom/fusepowered/m1/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonReader;->skipValue()V

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->delegate()Lcom/fusepowered/m1/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->read(Lcom/fusepowered/m1/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lcom/fusepowered/m1/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/m1/google/gson/stream/JsonWriter;

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/Excluder$1;->delegate()Lcom/fusepowered/m1/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/google/gson/TypeAdapter;->write(Lcom/fusepowered/m1/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
