import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";

using TypeSpec.Http;
@service({
    title: "Blinky Billing Service",
  })
namespace Billing;

model Product {
    @key
    @minLength(10)
    id: string;
    
    active: boolean;
    
    @minLength(1)
    name: string;
}

@error
model Error {
  code: int32;
  message: string;
}

@route("/product")
interface ProuductCatalog {
    @get list(): Product[] | Error;
    @post create(...Product): Product | Error;
    @patch update(...Product): Product | Error;
    @delete delete(@path id: string): void | Error;
}