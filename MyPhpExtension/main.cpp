#include <phpcpp.h>
#include <iostream>

void myFunction()
{
    Php::out << "example output" << std::endl;
}

extern "C" {
    

    PHPCPP_EXPORT void *get_module() 
    {
        static Php::Extension extension("MyPhpExtension", "1.0");
        extension.add("myFunction", myFunction);
        return extension;
    }
}