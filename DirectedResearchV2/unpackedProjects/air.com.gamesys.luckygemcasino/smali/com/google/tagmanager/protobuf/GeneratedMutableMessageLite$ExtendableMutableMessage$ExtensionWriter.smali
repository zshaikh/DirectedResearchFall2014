.class public Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;
.super Ljava/lang/Object;
.source "GeneratedMutableMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtensionWriter"
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageSetWireFormat:Z

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;Z)V
    .locals 1
    .param p2, "messageSetWireFormat"    # Z

    .prologue
    .line 324
    .local p0, "this":Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;, "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage<TMessageType;>.ExtensionWriter;"
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->this$0:Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->this$0:Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;

    # getter for: Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;->extensions:Lcom/google/tagmanager/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;->access$000(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;)Lcom/google/tagmanager/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    .line 325
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 328
    :cond_0
    iput-boolean p2, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->messageSetWireFormat:Z

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;ZLcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$1;

    .prologue
    .line 315
    .local p0, "this":Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;, "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage<TMessageType;>.ExtensionWriter;"
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage;Z)V

    return-void
.end method


# virtual methods
.method public writeUntil(ILcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "end"    # I
    .param p2, "output"    # Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;, "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage<TMessageType;>.ExtensionWriter;"
    :goto_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 335
    .local v0, "extension":Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    iget-boolean v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->messageSetWireFormat:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {p2, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/tagmanager/protobuf/MessageLite;)V

    .line 343
    :goto_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/tagmanager/protobuf/FieldSet;->writeField(Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/CodedOutputStream;)V

    goto :goto_1

    .line 346
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite$ExtendableMutableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 349
    .end local v0    # "extension":Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    :cond_2
    return-void
.end method
